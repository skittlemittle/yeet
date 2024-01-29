function formatprof
# formats a perf capture for rust apps
perf script -F +pid > temp.perf
rustfilt -i temp.perf -o out.perf
rm temp.perf
end
